.class public final Lcjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhim;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcjh;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcjh;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcjh;->c:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcjh;->d:I

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcjh;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcjh;->a:Ljava/lang/String;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcjh;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcjh;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcjh;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcjh;->d:I

    return v0
.end method
