.class public Lcom/android/systemui/screenrecord/ScreenRecordDialog;
.super Landroid/app/Activity;
.source "ScreenRecordDialog.java"


# instance fields
.field private mAudioSwitch:Landroid/widget/Switch;

.field private final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field private final mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

.field private mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;",
            ">;"
        }
    .end annotation
.end field

.field private mOptions:Landroid/widget/Spinner;

.field private mTapsSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/CurrentUserContextTracker;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->requestScreenCapture()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private requestScreenCapture()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mTapsSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v0, v3, v2, v1}, Lcom/android/systemui/screenrecord/RecordingService;->getStartIntent(Landroid/content/Context;IIZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    const-wide/16 v5, 0xbb8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/screenrecord/RecordingController;->startCountdown(JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ScreenRecordDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ScreenRecordDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$ScreenRecordDialog(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->lambda$onCreate$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    sget p1, Lcom/android/systemui/R$string;->screenrecord_name:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    sget p1, Lcom/android/systemui/R$layout;->screen_record_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/android/systemui/R$id;->button_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$UwuybAZfzEbq-KArO9WeoPnEStk;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$UwuybAZfzEbq-KArO9WeoPnEStk;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/android/systemui/R$id;->button_start:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$PtlgQ6bdLH8Q6JnpPzk4xxbDTtg;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$PtlgQ6bdLH8Q6JnpPzk4xxbDTtg;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mModes:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mModes:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mModes:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/android/systemui/R$id;->screenrecord_audio_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    sget p1, Lcom/android/systemui/R$id;->screenrecord_taps_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mTapsSwitch:Landroid/widget/Switch;

    sget p1, Lcom/android/systemui/R$id;->screen_recording_options:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    new-instance p1, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mModes:Ljava/util/List;

    const v2, 0x1090009

    invoke-direct {p1, v0, v2, v1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$cUVjQAzT3j1yIYL-9zw8455dx4I;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$cUVjQAzT3j1yIYL-9zw8455dx4I;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
