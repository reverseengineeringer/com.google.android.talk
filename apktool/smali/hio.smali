.class public final Lhio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latn;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lhio;->a:Ljava/lang/Integer;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lhio;->a:Ljava/lang/Integer;

    return-object v0
.end method
