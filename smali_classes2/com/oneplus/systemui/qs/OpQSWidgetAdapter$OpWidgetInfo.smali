.class public Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;
.super Ljava/lang/Object;
.source "OpQSWidgetAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpWidgetInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIconRes:I

.field private mText:Ljava/lang/String;

.field private mWidgetType:I


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;-><init>(IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mWidgetType:I

    iput p2, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mIconRes:I

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mText:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mWidgetType:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mIconRes:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mIconRes:I

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I
    .locals 0

    iget p1, p1, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mWidgetType:I

    iget p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->mWidgetType:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->compareTo(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I

    move-result p0

    return p0
.end method
