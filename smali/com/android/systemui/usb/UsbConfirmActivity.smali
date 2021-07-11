.class public Lcom/android/systemui/usb/UsbConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 187
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    :try_start_0
    const-string/jumbo p1, "usb"

    .line 134
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 135
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 142
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "device"

    .line 143
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    iget-object v4, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {p1, v4, p2}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    if-eqz v1, :cond_1

    .line 149
    iget-object p2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    goto :goto_1

    .line 152
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {p1, p2, v3, v0}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    :goto_1
    move-object v3, v2

    goto :goto_2

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v2, :cond_4

    .line 155
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "accessory"

    .line 156
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    iget-object v4, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {p1, v4, p2}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    if-eqz v1, :cond_3

    .line 162
    iget-object p2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    goto :goto_1

    .line 165
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {p1, p2, v3, v0}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    :goto_2
    const/high16 p1, 0x10000000

    .line 169
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/app/AlertActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "UsbConfirmActivity"

    const-string v0, "Unable to start activity"

    .line 175
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const-string v0, "accessory"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const-string v0, "rinfo"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const-string v0, "android.hardware.usb.extra.PACKAGE"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 73
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 75
    iget-object v3, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 76
    sget p1, Lcom/android/systemui/R$string;->usb_accessory_confirm_prompt:I

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    iget-object v3, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 77
    invoke-virtual {v3}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 78
    new-instance p1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    move p1, v6

    goto :goto_3

    :cond_0
    const-string v3, "android.intent.extra.UID"

    const/4 v7, -0x1

    .line 80
    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v3, "android.permission.RECORD_AUDIO"

    .line 82
    invoke-static {p0, v3, v7, p1, v0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v6

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getHasAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    move p1, v5

    goto :goto_1

    :cond_2
    move p1, v6

    :goto_1
    if-eqz p1, :cond_3

    .line 90
    sget v0, Lcom/android/systemui/R$string;->usb_device_confirm_prompt_warn:I

    goto :goto_2

    .line 91
    :cond_3
    sget v0, Lcom/android/systemui/R$string;->usb_device_confirm_prompt:I

    :goto_2
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    .line 93
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 94
    new-instance v0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v3, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    :goto_3
    const v0, 0x104000a

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v0, 0x1040000

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 98
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez p1, :cond_5

    const-string p1, "layout_inflater"

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x1090034

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v0, 0x10201d6

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_4

    .line 108
    sget v0, Lcom/android/systemui/R$string;->always_use_accessory:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    iget-object v1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 109
    invoke-virtual {v1}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 108
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 111
    :cond_4
    sget v3, Lcom/android/systemui/R$string;->always_use_device:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    .line 112
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 111
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v0, 0x1020233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
