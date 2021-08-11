.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;
.super Landroid/database/ContentObserver;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_need_show_ota_wizard"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needShowOTAWizard: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpStatusBar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Z

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$102(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)Z

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->setShowOTAWizard(Z)V

    :cond_1
    return-void
.end method
