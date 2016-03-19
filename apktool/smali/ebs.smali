.class public final Lebs;
.super Ldyx;
.source "SourceFile"


# static fields
.field public static final a:Z


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:[B

.field private final g:J

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lebs;->a:Z

    return-void
.end method

.method public constructor <init>(Lbfd;Ljava/lang/String;[BJZ)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 25
    iput-object p2, p0, Lebs;->e:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lebs;->f:[B

    .line 27
    iput-wide p4, p0, Lebs;->g:J

    .line 28
    iput-boolean p6, p0, Lebs;->h:Z

    .line 29
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 7

    .prologue
    .line 33
    new-instance v0, Lbfz;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 33
    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 34
    iget-boolean v1, p0, Lebs;->h:Z

    if-nez v1, :cond_1

    iget-wide v2, p0, Lebs;->g:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 36
    iget-wide v2, p0, Lebs;->g:J

    invoke-virtual {v0, v2, v3}, Lbfz;->b(J)Lbgo;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    iget-object v1, v1, Lbgo;->f:Lemc;

    sget-object v2, Lemc;->c:Lemc;

    if-ne v1, v2, :cond_0

    .line 56
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-wide v1, p0, Lebs;->g:J

    sget-object v3, Lemc;->c:Lemc;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 47
    invoke-virtual/range {v0 .. v5}, Lbfz;->b(JLemc;J)V

    .line 51
    iget-wide v2, p0, Lebs;->g:J

    invoke-static {v0, v2, v3}, Lbft;->b(Lbfz;J)V

    .line 54
    :cond_1
    new-instance v1, Lebt;

    iget-object v2, p0, Lebs;->e:Ljava/lang/String;

    iget-object v3, p0, Lebs;->f:[B

    iget-wide v4, p0, Lebs;->g:J

    iget-boolean v6, p0, Lebs;->h:Z

    invoke-direct/range {v1 .. v6}, Lebt;-><init>(Ljava/lang/String;[BJZ)V

    invoke-virtual {p0, v1}, Lebs;->a(Leff;)V

    goto :goto_0
.end method
