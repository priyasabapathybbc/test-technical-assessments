package uk.co.bbc.application

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.State
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import kotlinx.coroutines.flow.MutableStateFlow
import uk.co.bbc.application.ui.theme.ApplicationTheme

class MainActivity : ComponentActivity() {

    private val uiState = MutableStateFlow<UiState>(UiState.HomePage)

    private val onHomeClick = { uiState.value = UiState.HomePage }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            ApplicationTheme {
                Scaffold(modifier = Modifier.fillMaxSize()) { innerPadding ->
                    val uiState = uiState.collectAsState()
                    DrawContent(uiState, innerPadding, onHomeClick)
                }
            }
        }
    }
}

@Composable
fun DrawContent(uiState: State<UiState>, innerPadding: PaddingValues, onHomeClick: () -> Unit) {
    when (uiState.value) {
        UiState.HomePage -> Greeting(
            name = "Android",
            modifier = Modifier.padding(innerPadding)
        )
    }
}

sealed interface UiState {
    data object HomePage: UiState
}

@Composable
fun Greeting(name: String, modifier: Modifier = Modifier) {
    Text(
        text = "Hello $name!",
        modifier = modifier
    )
}

@Preview(showBackground = true)
@Composable
fun GreetingPreview() {
    ApplicationTheme {
        Greeting("Android")
    }
}