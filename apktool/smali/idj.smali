.class public final Lidj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lidj;


# instance fields
.field private final b:La;

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lidk;

    .line 5059
    invoke-direct {v0}, Lidk;-><init>()V

    .line 15
    invoke-virtual {v0}, Lidk;->a()Lidk;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lidk;->b()Lidk;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lidk;->c()Lidj;

    move-result-object v0

    sput-object v0, Lidj;->a:Lidj;

    .line 14
    return-void
.end method

.method constructor <init>(Lidk;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    iget-object v0, p1, Lidk;->a:La;

    .line 24
    iput-object v0, p0, Lidj;->b:La;

    .line 2059
    iget-boolean v0, p1, Lidk;->b:Z

    .line 25
    iput-boolean v0, p0, Lidj;->c:Z

    .line 3059
    iget-boolean v0, p1, Lidk;->c:Z

    .line 26
    iput-boolean v0, p0, Lidj;->d:Z

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lidj;->a:Lidj;

    if-ne p0, v0, :cond_1

    .line 54
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lidj;->b:La;

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must supply network capability to validate constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    iget-object v0, p0, Lidj;->b:La;

    invoke-interface {v0}, La;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4034
    iget-boolean v0, p0, Lidj;->c:Z

    .line 47
    if-nez v0, :cond_3

    .line 48
    new-instance v0, Lidq;

    const-string v1, "metered network not allowed"

    invoke-direct {v0, v1}, Lidq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    iget-object v0, p0, Lidj;->b:La;

    invoke-interface {v0}, La;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5030
    iget-boolean v0, p0, Lidj;->d:Z

    .line 51
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lidq;

    const-string v1, "roaming not allowed"

    invoke-direct {v0, v1}, Lidq;-><init>(Ljava/lang/String;)V

    throw v0
.end method
