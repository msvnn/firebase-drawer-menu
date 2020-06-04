class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),
      ),
      drawer: Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.orange
            ),
            child: Text(
                'Drawer Başlıgı',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),

            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),//icon belirleme
            title: Text('Login'),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>GirisYap()//giriş yap adında bir sayfa yapın ve bu sayfaya import edin.
                  ),
              );
            },
          ),
