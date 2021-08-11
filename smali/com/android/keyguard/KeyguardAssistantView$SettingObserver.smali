.class final Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardAssistantView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAssistantView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAssistantView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardAssistantView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$1000(Lcom/android/keyguard/KeyguardAssistantView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$1100(Lcom/android/keyguard/KeyguardAssistantView;)Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "lock_screen_show_notifications"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardAssistantView;->access$1000(Lcom/android/keyguard/KeyguardAssistantView;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-static {p2, p1, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAssistantView;->access$900(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange LOCK_SCREEN_SHOW_NOTIFICATIONS, show:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->access$1202(Lcom/android/keyguard/KeyguardAssistantView;Z)Z

    :cond_2
    return-void
.end method

.method unObserve()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$1000(Lcom/android/keyguard/KeyguardAssistantView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$1100(Lcom/android/keyguard/KeyguardAssistantView;)Lcom/android/keyguard/KeyguardAssistantView$SettingObserver;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
