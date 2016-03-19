.class public abstract Lhmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmd;


# static fields
.field static final a:Lhmq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lhmr;

    invoke-direct {v0}, Lhmr;-><init>()V

    sput-object v0, Lhmq;->a:Lhmq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
