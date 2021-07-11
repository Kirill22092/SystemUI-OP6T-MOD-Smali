.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultLeftButton"
.end annotation


# instance fields
.field private mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 1241
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    new-instance p1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-direct {p1}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;)V
    .locals 0

    .line 1241
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
    .locals 7

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$502(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultLeftButton mLeftIsVoiceAssist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar/KeyguardBottomAreaView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1255
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$bool;->oneplus_config_keyguardShowLeftAffordance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1257
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, v2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    .line 1265
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1270
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1271
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->ic_mic_fod:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1273
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->ic_mic_26dp:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1277
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1279
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->accessibility_voice_assist_button:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    .line 1288
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v2

    const-string v5, "HeadsUpNotificationZen"

    invoke-virtual {v2, v5}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1291
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v2, :cond_5

    move v3, v4

    :cond_5
    iput-boolean v3, v5, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    .line 1299
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->ic_phone_fod:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1301
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->accessibility_phone_button:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    .line 1306
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultLeftButton , mIconState.isVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mUserSetupComplete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1308
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showAffordance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPhoneVisible():"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1310
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isNeedHideLockIcon():"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1311
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 1319
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2100()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
