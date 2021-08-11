.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$21;
.super Ljava/lang/Object;
.source "OpStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnConfigChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$21;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$21;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$21;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object v0, v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$21;->val$newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
