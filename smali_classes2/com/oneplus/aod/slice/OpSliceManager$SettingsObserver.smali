.class final Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OpSliceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpSliceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/slice/OpSliceManager;

.field private final uriCalendarEnabled:Landroid/net/Uri;

.field private final uriLockScreenAllowPrivateNotifications:Landroid/net/Uri;

.field private final uriMusicInfoEnabled:Landroid/net/Uri;

.field private final uriSmartDisplayCurState:Landroid/net/Uri;

.field private final uriSmartDisplayEnabled:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/slice/OpSliceManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "aod_smart_display_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriSmartDisplayEnabled:Landroid/net/Uri;

    const-string p1, "aod_smart_display_cur_state"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriSmartDisplayCurState:Landroid/net/Uri;

    const-string p1, "aod_smart_display_music_info_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriMusicInfoEnabled:Landroid/net/Uri;

    const-string p1, "aod_smart_display_calendar_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriCalendarEnabled:Landroid/net/Uri;

    const-string p1, "lock_screen_allow_private_notifications"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriLockScreenAllowPrivateNotifications:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {v0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriSmartDisplayEnabled:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriSmartDisplayCurState:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriMusicInfoEnabled:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriCalendarEnabled:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriLockScreenAllowPrivateNotifications:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {v0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriSmartDisplayEnabled:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    const-string v5, "aod_smart_display_enabled"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v3, v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    invoke-static {v4, v5}, Lcom/oneplus/aod/slice/OpSliceManager;->access$302(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z

    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriSmartDisplayCurState:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    const-string v5, "aod_smart_display_cur_state"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v3, v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    invoke-static {v4, v5}, Lcom/oneplus/aod/slice/OpSliceManager;->access$402(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z

    :cond_5
    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriMusicInfoEnabled:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    const-string v5, "aod_smart_display_music_info_enabled"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v3, v5, :cond_7

    move v5, v3

    goto :goto_2

    :cond_7
    move v5, v2

    :goto_2
    invoke-static {v4, v5}, Lcom/oneplus/aod/slice/OpSliceManager;->access$502(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z

    :cond_8
    if-eqz p1, :cond_9

    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriCalendarEnabled:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    iget-object v4, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    const-string v5, "aod_smart_display_calendar_enabled"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v3, v0, :cond_a

    move v0, v3

    goto :goto_3

    :cond_a
    move v0, v2

    :goto_3
    invoke-static {v4, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$602(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z

    :cond_b
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->uriLockScreenAllowPrivateNotifications:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {v0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_allow_private_notifications"

    invoke-static {v4, v5, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v3, v1, :cond_d

    move v2, v3

    :cond_d
    invoke-static {v0, v2}, Lcom/oneplus/aod/slice/OpSliceManager;->access$702(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z

    :cond_e
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {v0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$800(Lcom/oneplus/aod/slice/OpSliceManager;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mSmartDisplayEnabled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p1}, Lcom/oneplus/aod/slice/OpSliceManager;->access$300(Lcom/oneplus/aod/slice/OpSliceManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mSmartDisplayCurState = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p1}, Lcom/oneplus/aod/slice/OpSliceManager;->access$400(Lcom/oneplus/aod/slice/OpSliceManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mMusicInfoEnabled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p1}, Lcom/oneplus/aod/slice/OpSliceManager;->access$500(Lcom/oneplus/aod/slice/OpSliceManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mCalendarEnabled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p1}, Lcom/oneplus/aod/slice/OpSliceManager;->access$600(Lcom/oneplus/aod/slice/OpSliceManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAllowShowSensitiveData="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$700(Lcom/oneplus/aod/slice/OpSliceManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSliceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
