.class Lcom/android/systemui/pip/tv/PipControlsViewController$2;
.super Landroid/media/session/MediaController$Callback;
.source "PipControlsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipControlsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$2;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController$2;->this$0:Lcom/android/systemui/pip/tv/PipControlsViewController;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->access$300(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    return-void
.end method
