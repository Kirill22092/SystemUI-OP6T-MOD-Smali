.class public Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;
.super Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;
.source "NotificationRemoteInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemoteInputActiveExtender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    return-void
.end method


# virtual methods
.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 784
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Keeping notification around while remote input active "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotifRemoteInputManager"

    .line 784
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method
