.class Lcom/android/systemui/qs/customize/QSCustomizer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 564
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$202(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    .line 565
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$300(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 567
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->calculateItemLocation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 552
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$100(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    .line 555
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$202(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    .line 556
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$300(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 558
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->calculateItemLocation()V

    return-void
.end method
