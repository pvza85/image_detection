ssh -i /home/payam/keys/ireland_grm.pem ubuntu@ec2-34-250-227-210.eu-west-1.compute.amazonaws.com
ssh -i /home/payam/keys/ireland_grm.pem -N -L 8157:localhost:8888 ubuntu@ec2-34-250-227-210.eu-west-1.compute.amazonaws.com



# oregan
ssh -i /home/payam/keys/oregon_grm.pem ubuntu@ec2-52-10-237-89.us-west-2.compute.amazonaws.com
ssh -i /home/payam/keys/oregon_grm.pem -N -L 8157:localhost:8888 ubuntu@ec2-52-10-237-89.us-west-2.compute.amazonaws.com


aws configure
# enter information

sudo aws s3 cp s3://grm-bilisim/cudnn-8.0-linux-x64-v5.1.tgz /home/ubuntu/program_folder




# optimiz GPU
sudo nvidia-smi -pm 1
sudo nvidia-smi --auto-boost-default=0
sudo nvidia-smi -ac 2505,875


#install all packages
sudo pip install --upgrade pip
sudo pip install virtualenv virtualenvwrapper imutil numpy scipy scikit-learn jupyter h5py
sudo apt-get install python-opencv
sudo pip install tensorflow-gpu
sudo pip install git+https://github.com/pvza85/tflearn.git



sudo aws s3 cp s3://grm-bilisim/ercis.tar.gz /home/ubuntu/data
tar xvzf /home/ubuntu/data/ercis.tar.gz

	
#links
wget https://s3-eu-west-1.amazonaws.com/stanford-mobile-images/book_covers.zip
wget https://s3-eu-west-1.amazonaws.com/stanford-mobile-images/cd_covers.zip
wget https://s3-eu-west-1.amazonaws.com/stanford-mobile-images/dvd_covers.zip
wget https://s3-eu-west-1.amazonaws.com/stanford-mobile-images/business_cards.zip
wget https://s3-eu-west-1.amazonaws.com/stanford-mobile-images/landmarks.zip
wget https://s3-eu-west-1.amazonaws.com/stanford-mobile-images/museum_paintings.zip
wget https://s3-eu-west-1.amazonaws.com/stanford-mobile-images/print.zip
