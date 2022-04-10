
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       makeRequest()
    }

    private func makeRequest() {
        var request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any")!)
        request.allHTTPHeaderFields = ["authToken":"nil"]
        request.httpMethod = "Get"
        
        let task = URLSession.shared.dataTask(with: request) {
            data, response, error in
            if let data = data, let joke = try? JSONDecoder().decode(Joke.self, from: data) {
                print(joke.setup)
            }
        }
        task.resume()
    }
}
