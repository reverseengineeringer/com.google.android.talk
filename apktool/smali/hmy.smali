.class public abstract Lhmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmd;


# static fields
.field static final c:Lhmy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lhmz;

    invoke-direct {v0}, Lhmz;-><init>()V

    sput-object v0, Lhmy;->c:Lhmy;

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
    .line 25
    const/16 v0, 0xa

    return v0
.end method
