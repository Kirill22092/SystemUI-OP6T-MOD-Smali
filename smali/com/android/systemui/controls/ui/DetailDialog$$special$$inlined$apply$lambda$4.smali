.class final Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$4;
.super Ljava/lang/Object;
.source "DetailDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$4;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$4;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    return-void
.end method
