.class Lcom/android/systemui/assist/AssistManager$3;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistManager;->access$200(Lcom/android/systemui/assist/AssistManager;)Lcom/android/settingslib/applications/InterestingConfigChanges;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v1, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->getInstance(Landroid/content/Context;)Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->getInstance(Landroid/content/Context;)Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistOrbContainer;->isShowing()Z

    move-result p1

    .line 233
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$300(Lcom/android/systemui/assist/AssistManager;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v2}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    move p1, v0

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v2, v1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->assist_orb:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-static {v1, v2}, Lcom/android/systemui/assist/AssistManager;->access$102(Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/assist/AssistOrbContainer;)Lcom/android/systemui/assist/AssistOrbContainer;

    .line 238
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$400(Lcom/android/systemui/assist/AssistManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v2}, Lcom/android/systemui/assist/AssistManager;->access$300(Lcom/android/systemui/assist/AssistManager;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v3}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 251
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssistManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p1, :cond_3

    .line 256
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    const-string v0, "AssistManager"

    const-string v1, "onDensityOrFontScaleChanged"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistManager;->access$500(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistManager$UiController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistManager;->access$500(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistManager$UiController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistManager$UiController;->onOverlayChanged()V

    :cond_0
    return-void
.end method

.method public onOverlayChanged()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistManager;->access$500(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistManager$UiController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistManager;->access$500(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistManager$UiController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistManager$UiController;->onOverlayChanged()V

    :cond_0
    return-void
.end method
