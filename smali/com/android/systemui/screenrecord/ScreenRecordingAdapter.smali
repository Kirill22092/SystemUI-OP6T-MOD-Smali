.class public Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScreenRecordingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;",
        ">;"
    }
.end annotation


# instance fields
.field private mInternalOption:Landroid/widget/LinearLayout;

.field private mMicAndInternalOption:Landroid/widget/LinearLayout;

.field private mMicOption:Landroid/widget/LinearLayout;

.field private mSelectedInternal:Landroid/widget/LinearLayout;

.field private mSelectedMic:Landroid/widget/LinearLayout;

.field private mSelectedMicAndInternal:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->initViews()V

    return-void
.end method

.method private getOption(II)Landroid/widget/LinearLayout;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->screen_record_dialog_audio_source:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->screen_recording_dialog_source_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    if-eqz p2, :cond_0

    sget p1, Lcom/android/systemui/R$id;->screen_recording_dialog_source_description:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-object p0
.end method

.method private getSelected(I)Landroid/widget/LinearLayout;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->screen_record_dialog_audio_source_selected:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->screen_recording_dialog_source_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method private initViews()V
    .locals 3

    sget v0, Lcom/android/systemui/R$string;->screenrecord_device_audio_label:I

    invoke-direct {p0, v0}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getSelected(I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedInternal:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$string;->screenrecord_mic_label:I

    invoke-direct {p0, v0}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getSelected(I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedMic:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$string;->screenrecord_device_audio_and_mic_label:I

    invoke-direct {p0, v0}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getSelected(I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedMicAndInternal:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$string;->screenrecord_mic_label:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getOption(II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mMicOption:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    sget v0, Lcom/android/systemui/R$string;->screenrecord_device_audio_and_mic_label:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getOption(II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mMicAndInternalOption:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    sget v0, Lcom/android/systemui/R$string;->screenrecord_device_audio_label:I

    sget v1, Lcom/android/systemui/R$string;->screenrecord_device_audio_description:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getOption(II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mInternalOption:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter$1;->$SwitchMap$com$android$systemui$screenrecord$ScreenRecordingAudioSource:[I

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mMicOption:Landroid/widget/LinearLayout;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mMicAndInternalOption:Landroid/widget/LinearLayout;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mInternalOption:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter$1;->$SwitchMap$com$android$systemui$screenrecord$ScreenRecordingAudioSource:[I

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedMic:Landroid/widget/LinearLayout;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedMicAndInternal:Landroid/widget/LinearLayout;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedInternal:Landroid/widget/LinearLayout;

    return-object p0
.end method
