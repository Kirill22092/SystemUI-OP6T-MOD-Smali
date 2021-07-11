.class public abstract Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.super Ljava/lang/Object;
.source "AnimatableProperty.java"


# static fields
.field public static final X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field public static final Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    sget v1, Lcom/android/systemui/R$id;->x_animator_tag:I

    sget v2, Lcom/android/systemui/R$id;->x_animator_tag_start_value:I

    sget v3, Lcom/android/systemui/R$id;->x_animator_tag_end_value:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 37
    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    sget v1, Lcom/android/systemui/R$id;->y_animator_tag:I

    sget v2, Lcom/android/systemui/R$id;->y_animator_tag_start_value:I

    sget v3, Lcom/android/systemui/R$id;->y_animator_tag_end_value:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;

    const-string v1, "ViewAbsoluteX"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$id;->absolute_x_animator_tag:I

    sget v2, Lcom/android/systemui/R$id;->absolute_x_animator_start_tag:I

    sget v3, Lcom/android/systemui/R$id;->absolute_x_animator_end_tag:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;

    const-string v1, "ViewAbsoluteY"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$id;->absolute_y_animator_tag:I

    sget v2, Lcom/android/systemui/R$id;->absolute_y_animator_start_tag:I

    sget v3, Lcom/android/systemui/R$id;->absolute_y_animator_end_tag:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;

    const-string v1, "ViewWidth"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$id;->view_width_animator_tag:I

    sget v2, Lcom/android/systemui/R$id;->view_width_animator_start_tag:I

    sget v3, Lcom/android/systemui/R$id;->view_width_animator_end_tag:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;

    const-string v1, "ViewHeight"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$id;->view_height_animator_tag:I

    sget v2, Lcom/android/systemui/R$id;->view_height_animator_start_tag:I

    sget v3, Lcom/android/systemui/R$id;->view_height_animator_end_tag:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;III)",
            "Lcom/android/systemui/statusbar/notification/AnimatableProperty;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-direct {v0, p2, p3, p1, p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/Float;",
            ">;III)",
            "Lcom/android/systemui/statusbar/notification/AnimatableProperty;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    .line 156
    new-instance p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    invoke-direct {p0, p4, p5, p3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;-><init>(IIILandroid/util/Property;)V

    return-object p0
.end method


# virtual methods
.method public abstract getAnimationEndTag()I
.end method

.method public abstract getAnimationStartTag()I
.end method

.method public abstract getAnimatorTag()I
.end method

.method public abstract getProperty()Landroid/util/Property;
.end method
