.class final Lcom/android/systemui/media/MediaDeviceManager$Token$onSelectedDeviceStateChanged$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager$Token;->onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager$Token;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDeviceManager$Token;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Token$onSelectedDeviceStateChanged$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Token$onSelectedDeviceStateChanged$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Token;

    invoke-static {p0}, Lcom/android/systemui/media/MediaDeviceManager$Token;->access$updateCurrent(Lcom/android/systemui/media/MediaDeviceManager$Token;)V

    return-void
.end method
