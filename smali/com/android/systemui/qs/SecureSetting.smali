.class public abstract Lcom/android/systemui/qs/SecureSetting;
.super Landroid/database/ContentObserver;
.source "SecureSetting.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListening:Z

.field private mObservedValue:I

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 46
    iput-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    .line 48
    iput p4, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    .line 76
    iget v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SecureSetting;->handleValueChanged(IZ)V

    .line 77
    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 65
    iget-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    .line 66
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 65
    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    iput v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    :goto_0
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 82
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
