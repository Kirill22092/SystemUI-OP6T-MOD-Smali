.class public Lcom/android/systemui/usb/UsbContaminantActivity;
.super Landroid/app/Activity;
.source "UsbContaminantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEnableUsb:Landroid/widget/TextView;

.field private mGotIt:Landroid/widget/TextView;

.field private mLearnMore:Landroid/widget/TextView;

.field private mMessage:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUsbPort:Landroid/hardware/usb/UsbPort;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mEnableUsb:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 88
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mUsbPort:Landroid/hardware/usb/UsbPort;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbPort;->enableContaminantDetection(Z)V

    .line 89
    sget p1, Lcom/android/systemui/R$string;->usb_port_enabled:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "UsbContaminantActivity"

    const-string v1, "Unable to notify Usb service"

    .line 92
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mLearnMore:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 95
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.HelpTrampoline"

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    const-string v1, "help_url_usb_contaminant_detected"

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/16 v1, 0x7d8

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget p1, Lcom/android/systemui/R$layout;->contaminant_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "port"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/ParcelableUsbPort;

    .line 60
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/hardware/usb/ParcelableUsbPort;->getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 62
    sget p1, Lcom/android/systemui/R$id;->learnMore:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mLearnMore:Landroid/widget/TextView;

    .line 63
    sget p1, Lcom/android/systemui/R$id;->enableUsb:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mEnableUsb:Landroid/widget/TextView;

    .line 64
    sget p1, Lcom/android/systemui/R$id;->gotIt:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mGotIt:Landroid/widget/TextView;

    .line 65
    sget p1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mTitle:Landroid/widget/TextView;

    .line 66
    sget p1, Lcom/android/systemui/R$id;->message:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mMessage:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->usb_contaminant_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mMessage:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->usb_contaminant_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mEnableUsb:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->usb_disable_contaminant_detection:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mGotIt:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->got_it:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mLearnMore:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->learn_more:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mEnableUsb:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/usb/UsbContaminantActivity;->mLearnMore:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
