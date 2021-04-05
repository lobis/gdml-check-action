void CheckGDML(string filename)
{
    TGeoManager::Import(filename.c_str());

    // if the file didn't load correctly, the global gGeoManager should be a nullptr
    if (gGeoManager == nullptr)
    {
        cout << "ERROR: Loading failed." << endl;
        return;
    }
    cout << "INFO: Loading successful" << endl;

    //cout << "INFO: Checking for overlaps" << endl;
    //gGeoManager->CheckOverlaps();

    cout << endl
         << " --- TEST WAS SUCCESSFUL --- " << endl;
}
