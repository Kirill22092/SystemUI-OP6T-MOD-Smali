.class Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;
.super Landroid/util/FloatProperty;
.source "AnimatableProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    .line 123
    sget p0, Lcom/android/systemui/R$id;->view_height_current_value:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 124
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Ljava/lang/Float;

    return-object p0

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 1

    .line 117
    sget p0, Lcom/android/systemui/R$id;->view_height_current_value:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBottom(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 114
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;->setValue(Landroid/view/View;F)V

    return-void
.end method
