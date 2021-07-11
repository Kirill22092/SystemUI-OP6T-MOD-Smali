.class public Lcom/android/systemui/ForegroundServiceController;
.super Ljava/lang/Object;
.source "ForegroundServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;
    }
.end annotation


# instance fields
.field private final mMutex:Ljava/lang/Object;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/ForegroundServicesUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    .line 49
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 114
    monitor-exit v0

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/ForegroundServicesUserState;->getFeatures(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDisclosureNeededForUser(I)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 76
    monitor-exit v0

    return p0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesUserState;->isDisclosureNeeded()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 213
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlertWindowNotification"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSystemAlertWarningNeeded(ILjava/lang/String;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ForegroundServicesUserState;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 88
    monitor-exit v0

    return p1

    .line 89
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/ForegroundServicesUserState;->getStandardLayoutKeys(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 189
    new-instance v1, Lcom/android/systemui/ForegroundServicesUserState;

    invoke-direct {v1}, Lcom/android/systemui/ForegroundServicesUserState;-><init>()V

    .line 190
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 192
    monitor-exit v0

    return p0

    .line 195
    :cond_1
    :goto_0
    invoke-interface {p2, v1}, Lcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;->updateUserState(Lcom/android/systemui/ForegroundServicesUserState;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
