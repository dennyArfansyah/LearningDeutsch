# LearningDeutsch

### Story: Learners requests to see list of video's thumbnail

### Narative #1

```
As an learners
I want the app to automatically load list of video's thumbnail
So I can directly see the newest videos' thumbnail
```

#### Scenario (Acceptance critaria)
```
Given the learner has connectivity
 When the learner requests to see list of video's thumbnail
 Then the app should show the list of video's thumbnail
```

# Use Cases

### Load Video's Thumbnail From Remote Use Case

#### Data:
- URL

#### Primary course (happy path):
  1. Execute "Load Image Feed" command with above data.
  2. System downloads data from the URL.
  3. System validates downloaded data.
  4. System creates image feed from valid data.
  5. System delivers image feed.
    
#### Invalid data – error course (sad path):
  1. System delivers invalid data error.

#### No connectivity – error course (sad path):
  1. System delivers connectivity error.


# Flowchart

# Model Specs

### Video 
| Property        | Type                |
|-----------------|---------------------|
| `id`            | `UUID`              |
| `title`         | `String` |
| `description`   | `String` (optional) |
| `thumbnail_url` | `URL`               |
| `video_url`     | `URL`               |

# Payload Contract
```
GET /feed

200 RESPONSE

{
	"videos": [
		{
			"id": "a UUID",
			"title": "a title",
			"description": "a description",
			"thumbnail_url": "https://a-thumbnail",
			"video_url": "https://a-video.url",
		},
	    "id": "another UUID",
			"title": "another title",
			"thumbnail_url": "https://another-thumbnail",
			"video_url": "https://another-video.url",
		}
		...
	]
}
```

# App Architecture


