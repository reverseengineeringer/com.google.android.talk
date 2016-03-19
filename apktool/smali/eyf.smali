.class public final Leyf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leyf;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lhu;

    invoke-direct {v0}, Lhu;-><init>()V

    iput-object v0, p0, Leyf;->b:Lhu;

    .line 12
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Leyf;->b:Lhu;

    invoke-virtual {v0, p1, p2}, Lhu;->b(J)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Leyf;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Leyf;->b:Lhu;

    sget-object v1, Leyf;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Lhu;->a(JLjava/lang/Object;)V

    .line 32
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Leyf;->b:Lhu;

    invoke-virtual {v0, p1, p2}, Lhu;->c(J)V

    .line 41
    return-void
.end method
