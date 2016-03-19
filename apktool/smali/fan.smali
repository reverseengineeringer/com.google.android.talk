.class public Lfan;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcaj;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 27
    iget-object v0, p0, Lfan;->a:Lcaj;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lfan;->a:Lcaj;

    iget-object v1, p0, Lfan;->b:Ljava/lang/String;

    iget-wide v2, p0, Lfan;->c:J

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcaj;->a(Ljava/lang/String;JZ)V

    .line 30
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lfan;->c:J

    .line 38
    return-void
.end method

.method public a(Lcaj;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lfan;->a:Lcaj;

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lfan;->b:Ljava/lang/String;

    .line 34
    return-void
.end method
