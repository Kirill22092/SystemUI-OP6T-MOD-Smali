.class public final Lcom/android/systemui/controls/management/ControlAdapter$spanSizeLookup$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlAdapter;-><init>(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlAdapter;->getItemViewType(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method
