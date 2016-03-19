.class public Ldnn;
.super Ldnh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 254
    invoke-direct {p0}, Ldnh;-><init>()V

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 256
    iput-object p1, p0, Ldnn;->a:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Ldnn;->b:Ljava/lang/String;

    .line 258
    iput-object p3, p0, Ldnn;->c:Ljava/lang/String;

    .line 259
    iput-boolean p4, p0, Ldnn;->d:Z

    .line 260
    iput-boolean p5, p0, Ldnn;->j:Z

    .line 261
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 266
    new-instance v0, Ljpp;

    invoke-direct {v0}, Ljpp;-><init>()V

    .line 267
    iget-object v1, p0, Ldnn;->a:Ljava/lang/String;

    iput-object v1, v0, Ljpp;->c:Ljava/lang/String;

    .line 269
    new-instance v1, Ljqc;

    invoke-direct {v1}, Ljqc;-><init>()V

    .line 270
    iput-object v0, v1, Ljqc;->a:Ljpp;

    .line 271
    iget-object v0, p0, Ldnn;->c:Ljava/lang/String;

    iput-object v0, v1, Ljqc;->b:Ljava/lang/String;

    .line 273
    new-instance v0, Ljqd;

    invoke-direct {v0}, Ljqd;-><init>()V

    .line 274
    new-array v2, v4, [Ljqc;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v0, Ljqd;->a:[Ljqc;

    .line 275
    iget-boolean v1, p0, Ldnn;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljqd;->b:Ljava/lang/Boolean;

    .line 277
    new-instance v1, Ljqo;

    invoke-direct {v1}, Ljqo;-><init>()V

    .line 278
    iput-object v0, v1, Ljqo;->a:Ljqd;

    .line 279
    iget-boolean v0, p0, Ldnn;->d:Z

    if-nez v0, :cond_0

    .line 280
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Ljqo;->d:Ljava/lang/Boolean;

    .line 284
    :cond_0
    new-instance v0, Liyf;

    invoke-direct {v0}, Liyf;-><init>()V

    .line 286
    iput-object v1, v0, Liyf;->a:Ljqo;

    .line 287
    return-object v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Ldnn;->j:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Ldnh;->a(Lcwk;Ldvn;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "blockuser"

    return-object v0
.end method
