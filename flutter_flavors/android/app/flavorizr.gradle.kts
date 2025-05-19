import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("developmet") {
            dimension = "flavor-type"
            applicationId = "com.example.development"
            resValue(type = "string", name = "app_name", value = "App development")
        }
        create("production:") {
            dimension = "flavor-type"
            applicationId = "com.example.production"
            resValue(type = "string", name = "app_name", value = "Production")
        }
    }
}