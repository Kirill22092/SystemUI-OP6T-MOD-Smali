.class public Lcom/oneplus/aod/slice/OpMusicSlice;
.super Lcom/oneplus/aod/slice/OpSlice;
.source "OpMusicSlice.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# instance fields
.field private mIsPlaying:Z

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private final mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V
    .locals 0

    .line 24
    invoke-direct {p0, p2}, Lcom/oneplus/aod/slice/OpSlice;-><init>(Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mMediaMetadata:Landroid/media/MediaMetadata;

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mIsPlaying:Z

    .line 25
    sget p2, Lcom/android/systemui/R$drawable;->op_aod_slice_music:I

    iput p2, p0, Lcom/oneplus/aod/slice/OpSlice;->mIcon:I

    const-string p2, "media_session"

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    .line 29
    const-class p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-void
.end method

.method private updateInfo()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_4

    const-string v1, "android.media.metadata.TITLE"

    .line 52
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfo: primary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", secondary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", playing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Unknow"

    .line 61
    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Unknown artist"

    .line 65
    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    .line 68
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mIsPlaying:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->updateUI()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleSetListening(Z)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Lcom/oneplus/aod/slice/OpSlice;->handleSetListening(Z)V

    .line 35
    sget-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetListening = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNotificationMediaManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 41
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->removeCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mMediaMetadata:Landroid/media/MediaMetadata;

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 78
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpMusicSlice;->mIsPlaying:Z

    .line 82
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpMusicSlice;->updateInfo()V

    return-void
.end method
