.class Lcom/android/systemui/qs/QSSecurityFooter$2;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$400(Lcom/android/systemui/qs/QSSecurityFooter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QSSecurityFooter"

    const-string/jumbo v1, "update during panel expanding, skip."

    .line 524
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$502(Lcom/android/systemui/qs/QSSecurityFooter;Z)Z

    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$700(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$900(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$800(Lcom/android/systemui/qs/QSSecurityFooter;)Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x8

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
