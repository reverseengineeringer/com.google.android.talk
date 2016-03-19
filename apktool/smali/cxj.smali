.class public abstract Lcxj;
.super Lcyb;
.source "SourceFile"


# static fields
.field static final a:Z

.field static g:Lcxn;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/CharSequence;

.field public final d:J

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcxj;->a:Z

    .line 334
    new-instance v0, Lcxn;

    invoke-direct {v0}, Lcxn;-><init>()V

    sput-object v0, Lcxj;->g:Lcxn;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILexn;J)V
    .locals 3

    .prologue
    .line 342
    invoke-direct {p0, p1, p2, p4}, Lcyb;-><init>(Landroid/content/Context;ILexn;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcxj;->c:Ljava/lang/CharSequence;

    .line 344
    iput p3, p0, Lcxj;->e:I

    .line 345
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    :goto_0
    iput-wide p5, p0, Lcxj;->d:J

    .line 346
    return-void

    .line 345
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcyg;->a(Landroid/content/Context;ILjava/util/List;)V

    .line 178
    invoke-static {p0, p1}, Lcxy;->b(Landroid/content/Context;I)V

    .line 179
    return-void
.end method


# virtual methods
.method protected b()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 354
    new-instance v0, Lcxk;

    invoke-direct {v0}, Lcxk;-><init>()V

    iget-object v1, p0, Lcxj;->p:Landroid/content/Context;

    iget v2, p0, Lcxj;->q:I

    iget-object v3, p0, Lcxj;->r:Lexn;

    .line 355
    invoke-virtual {v3}, Lexn;->b()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {v0, v1, v2, v3}, Lcxk;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
