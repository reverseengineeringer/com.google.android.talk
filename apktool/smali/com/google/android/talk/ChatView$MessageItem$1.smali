.class Lcom/google/android/talk/ChatView$MessageItem$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView$MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$MessageItem;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$MessageItem;)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageItem$1;->this$1:Lcom/google/android/talk/ChatView$MessageItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 1106
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1107
    return-void
.end method
