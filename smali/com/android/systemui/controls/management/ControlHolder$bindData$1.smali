.class final Lcom/android/systemui/controls/management/ControlHolder$bindData$1;
.super Ljava/lang/Object;
.source "ControlAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlHolder;->bindData(Lcom/android/systemui/controls/management/ElementWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $wrapper:Lcom/android/systemui/controls/management/ElementWrapper;

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlHolder;Lcom/android/systemui/controls/management/ElementWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/ControlHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;->$wrapper:Lcom/android/systemui/controls/management/ElementWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/ControlHolder;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlHolder;->access$getFavorite$p(Lcom/android/systemui/controls/management/ControlHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/ControlHolder;->updateFavorite(Z)V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/ControlHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/ControlHolder;->getFavoriteCallback()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;->$wrapper:Lcom/android/systemui/controls/management/ElementWrapper;

    check-cast v0, Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/ControlHolder;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlHolder;->access$getFavorite$p(Lcom/android/systemui/controls/management/ControlHolder;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
