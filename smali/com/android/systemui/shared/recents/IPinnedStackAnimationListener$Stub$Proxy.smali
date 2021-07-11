.class Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPinnedStackAnimationListener.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IPinnedStackAnimationListener"

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 99
    invoke-static {}, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 100
    invoke-static {}, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;->onPinnedStackAnimationStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    throw p0
.end method
