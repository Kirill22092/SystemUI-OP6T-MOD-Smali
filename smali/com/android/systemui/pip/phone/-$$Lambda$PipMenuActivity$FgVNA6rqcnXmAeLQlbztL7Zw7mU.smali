.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$FgVNA6rqcnXmAeLQlbztL7Zw7mU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$FgVNA6rqcnXmAeLQlbztL7Zw7mU;->f$0:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$FgVNA6rqcnXmAeLQlbztL7Zw7mU;->f$0:Landroid/widget/ImageButton;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$updateActionViews$4(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
