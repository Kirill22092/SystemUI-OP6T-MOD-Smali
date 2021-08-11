.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$updateActionViews$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
