describe Picture do 
  it 'get the image from 500px API', :vcr do
    expect(Picture.get_url "Australia").to eq "https://drscdn.500px.org/photo/105604077/w%3D600_h%3D600/b600416ad765d71aac8ea5b9761cb1a3?v=12"
  end
end