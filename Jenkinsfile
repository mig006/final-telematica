pipeline {
    agent any
    stages {
        stage('Deploy to EC2') {
            steps {
                sshagent(['jenkins']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ubuntu@44.211.161.1808 << 'ENDSSH'
                        # Elimina el directorio existente si existe
                        rm -rf ~/app
                        # Clona el repositorio
                        git clone https://github.com/abel8000000/final-telematica.git ~/app
                        # Navega al directorio de scripts
                        cd ~/app/scripts
                        # Da permisos de ejecución al script de despliegue
                        chmod +x deploy.sh
                        # Ejecuta el script de despliegue
                        ./deploy.sh
                        ENDSSH
                    '''
                }
            }
        }
    }
}
