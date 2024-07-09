import os
import boto3

aws_access_key_id = 'aws_access_key_id'
aws_secret_access_key = 'aws_secret_access_key'

def upload_files_to_s3(bucket_name, folder_path):
    s3 = boto3.client('s3', 
                      aws_access_key_id=aws_access_key_id, 
                      aws_secret_access_key=aws_secret_access_key)

    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.endswith(('.csv', '.xlsx')):
                local_path = os.path.join(root, file)
                s3_path = os.path.relpath(local_path, folder_path)
                print(f'Cargando archivo local: {local_path} a S3: {bucket_name}/{s3_path}')
                try:
                    s3.upload_file(local_path, bucket_name, s3_path)
                    print(f'Archivo {file} cargado exitosamente a S3.')
                except Exception as e:
                    print(f'Ocurrió un error al cargar {file} a S3: {e}')

if __name__ == '__main__':
    bucket_name = 'ccallicloud01'  
    folder_path = 'c:\\datahospital'  
    
    upload_files_to_s3(bucket_name, folder_path)
