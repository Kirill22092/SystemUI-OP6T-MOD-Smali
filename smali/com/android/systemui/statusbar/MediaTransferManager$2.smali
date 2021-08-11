.class Lcom/android/systemui/statusbar/MediaTransferManager$2;
.super Ljava/lang/Object;
.source "MediaTransferManager.java"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MediaTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MediaTransferManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MediaTransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$200(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/settingslib/media/LocalMediaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$300(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$300(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/media/MediaDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$302(Lcom/android/systemui/statusbar/MediaTransferManager;Lcom/android/settingslib/media/MediaDevice;)Lcom/android/settingslib/media/MediaDevice;

    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$400(Lcom/android/systemui/statusbar/MediaTransferManager;)V

    :cond_1
    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$300(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$300(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/media/MediaDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$302(Lcom/android/systemui/statusbar/MediaTransferManager;Lcom/android/settingslib/media/MediaDevice;)Lcom/android/settingslib/media/MediaDevice;

    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager$2;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$400(Lcom/android/systemui/statusbar/MediaTransferManager;)V

    :cond_1
    return-void
.end method
