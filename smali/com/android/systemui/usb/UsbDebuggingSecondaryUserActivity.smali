.class public Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbDebuggingSecondaryUserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;
    }
.end annotation


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "service.adb.tcp.port"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    invoke-direct {p1, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v0, Lcom/android/systemui/R$string;->usb_debugging_secondary_user_title:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    sget v0, Lcom/android/systemui/R$string;->usb_debugging_secondary_user_message:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    :try_start_0
    const-string v0, "adb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/debug/IAdbManager;->denyDebugging()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UsbDebuggingSecondaryUserActivity"

    const-string v2, "Unable to notify Usb service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
