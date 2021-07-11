.class Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;
.super Ljava/lang/Object;
.source "AppOpsCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tagAppOps(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 202
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    .line 205
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)Lcom/android/systemui/ForegroundServiceController;

    move-result-object p0

    .line 206
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 207
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ForegroundServiceController;->getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 209
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    if-eqz p0, :cond_0

    .line 211
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;->tagAppOps(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$3;->tagAppOps(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
