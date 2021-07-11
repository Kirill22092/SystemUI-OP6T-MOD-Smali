.class Lcom/android/systemui/ScreenDecorations$7;
.super Landroid/content/BroadcastReceiver;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 717
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 718
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$900()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 719
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserSwitched newUserId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScreenDecorations"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p2}, Lcom/android/systemui/ScreenDecorations;->access$800(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 724
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1000(Lcom/android/systemui/ScreenDecorations;)Lcom/oneplus/util/SystemSetting;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 725
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$1000(Lcom/android/systemui/ScreenDecorations;)Lcom/oneplus/util/SystemSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/util/SystemSetting;->onUserSwitched()V

    .line 728
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$7;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$800(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/ScreenDecorations;->access$600(Lcom/android/systemui/ScreenDecorations;I)V

    return-void
.end method
