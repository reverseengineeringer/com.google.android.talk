.class public final Lath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lats;


# direct methods
.method public constructor <init>(Lats;)V
    .locals 0

    .prologue
    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2458
    iput-object p1, p0, Lath;->a:Lats;

    .line 2459
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 1463
    if-eqz p1, :cond_0

    .line 1464
    iget-object v0, p0, Lath;->a:Lats;

    invoke-virtual {v0}, Lats;->d()V

    .line 1466
    :cond_0
    return-void
.end method
