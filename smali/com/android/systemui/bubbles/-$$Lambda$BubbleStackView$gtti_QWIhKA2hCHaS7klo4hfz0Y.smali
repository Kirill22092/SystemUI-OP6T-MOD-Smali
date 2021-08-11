.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gtti_QWIhKA2hCHaS7klo4hfz0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gtti_QWIhKA2hCHaS7klo4hfz0Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gtti_QWIhKA2hCHaS7klo4hfz0Y;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gtti_QWIhKA2hCHaS7klo4hfz0Y;-><init>()V

    sput-object v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gtti_QWIhKA2hCHaS7klo4hfz0Y;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gtti_QWIhKA2hCHaS7klo4hfz0Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$updateExpandedViewTheme$15(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method
