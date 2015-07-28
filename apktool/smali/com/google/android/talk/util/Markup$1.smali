.class Lcom/google/android/talk/util/Markup$1;
.super Ljava/lang/Object;
.source "Markup.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/util/Markup;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/util/Markup;

.field final synthetic val$lines:I

.field final synthetic val$shiftAmount:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/util/Markup;II)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/talk/util/Markup$1;->this$0:Lcom/google/android/talk/util/Markup;

    iput p2, p0, Lcom/google/android/talk/util/Markup$1;->val$shiftAmount:I

    iput p3, p0, Lcom/google/android/talk/util/Markup$1;->val$lines:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 159
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/talk/util/Markup$1;->val$shiftAmount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeadingMarginLineCount()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/talk/util/Markup$1;->val$lines:I

    return v0
.end method
