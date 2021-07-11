.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;

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

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->onAppTransitionFinished()V

    return-void
.end method
