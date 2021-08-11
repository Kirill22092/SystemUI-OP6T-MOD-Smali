.class public final Lcom/android/systemui/media/MediaCarouselControllerKt;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# static fields
.field private static final settingsIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/MediaCarouselControllerKt;->settingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic access$getSettingsIntent$p()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaCarouselControllerKt;->settingsIntent:Landroid/content/Intent;

    return-object v0
.end method
