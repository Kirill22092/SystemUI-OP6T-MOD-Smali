.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1300
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "systemui_navigation_bar_hided"

    if-eqz p1, :cond_0

    .line 1301
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1303
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1305
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showNavigationBarGuide()V

    .line 1308
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcon(Z)V

    .line 1309
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1502(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z

    .line 1310
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1700(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V

    return-void
.end method
