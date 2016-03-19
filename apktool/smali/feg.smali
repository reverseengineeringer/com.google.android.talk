.class public Lfeg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field public final f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lfeg;->f:Landroid/widget/TextView;

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lfeg;->a:Ljava/lang/CharSequence;

    .line 1030
    invoke-virtual {p0}, Lfeg;->b()V

    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lfeg;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lfeg;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lfeg;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lfeg;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void

    .line 38
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
