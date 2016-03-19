.class public final Lidk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:La;

.field b:Z

.field c:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public a()Lidk;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lidk;->b:Z

    .line 73
    return-object p0
.end method

.method public b()Lidk;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lidk;->c:Z

    .line 78
    return-object p0
.end method

.method public c()Lidj;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lidj;

    .line 1012
    invoke-direct {v0, p0}, Lidj;-><init>(Lidk;)V

    .line 82
    return-object v0
.end method
